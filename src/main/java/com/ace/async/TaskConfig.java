package com.ace.async;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

import org.springframework.aop.interceptor.AsyncUncaughtExceptionHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.AsyncConfigurer;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;

@Configuration
@EnableScheduling
@EnableAsync(proxyTargetClass = true)
public class TaskConfig implements SchedulingConfigurer, AsyncConfigurer {

	@Override
	public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {
		
		taskRegistrar.addCronTask(new Runnable() {
			@Override
			public void run() {
//				logCollector().collect();
			}
		}, "*/60 * * * * *");
		
	}

/*	
	@Bean
	public LogCollector logCollector() {
		return new LogCollector();
	}
*/
	@Bean
	public ThreadPoolTaskScheduler taskScheduler() {
		ThreadPoolTaskScheduler scheduler = new ThreadPoolTaskScheduler();
		scheduler.setPoolSize(4);
		scheduler.setRejectedExecutionHandler(new ThreadPoolExecutor.AbortPolicy());
		return scheduler;
	}

	@Bean
	public LogProcessor logProcessor() {
		return new LogProcessor();
	}
	
	@Bean
	public MainProcessor mainProcessor() {
		return new MainProcessor();
	}	
	
	@Bean
	public CheckProcessor checkProcessor() {
		return new CheckProcessor();
	}	
	
/*
	@Bean
	public MessageSender messageSender() {
		return new MessageSender();
	}
*/
	@Override
	public Executor getAsyncExecutor() {
		return taskScheduler();
	}

	@Override
	public AsyncUncaughtExceptionHandler getAsyncUncaughtExceptionHandler() {
		return new AsyncExceptionHandler();
	}

}
