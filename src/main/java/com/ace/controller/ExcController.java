package com.ace.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ace.domain.Exc;
import com.ace.service.ExcService;

@Controller
public class ExcController {

    @Autowired
    private ExcService excService;

   
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Exc> excList = excService.findAll();
        model.addAttribute("excList", excList);
        return "exc/list";
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String view(@RequestParam("id") int id, Model model) {
        Exc exc = excService.findById(id);
        model.addAttribute("exc", exc);
        return "exc/view";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addForm() {
        return "exc/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(Exc exc) {
        excService.saveOrUpdate(exc);
        return "redirect:/exc/list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delete(@RequestParam("id") int id) {
        excService.delete(id);
        return "redirect:/exc/list";
    }
    
    
    @RestController
    @RequestMapping("/api/pens")
    public class PenController {

    }

    @RequestMapping(value = "/api/pens/list", method = RequestMethod.GET)
    @ResponseBody
    public List<Exc> getPenList() {
        return excService.findAll(); // 모든 Pen 객체 리스트를 반환
    }
    
    @RequestMapping(value = "/api/pens/test2", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> setPensTest(@RequestParam String a, @RequestParam String b) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	rtnMap.put("aaa",a);
    	rtnMap.put("bbb",b);
    	
    	return rtnMap; // 모든 Pen 객체 리스트를 반환
    }
    
    
}
