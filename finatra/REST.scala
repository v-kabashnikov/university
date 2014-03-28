package com.twitter.finatra.test

import com.twitter.finatra._
import com.twitter.finatra.ContentType._

class ExampleSpec extends FlatSpecHelper {
	class ExampleApp extends Controller {
		 
		 get("/Univercities/:name") { request =>
     	 val name = request.routeParams.getOrElse("username", "default_user")
     	 render.plain("hello " + username).toFuture
   		 }
   		

   		get("/search") { request =>
      	request.params.get("q") match {
        case Some(q) => render.plain("no results for "+ q).toFuture
        case None    => render.plain("query param q needed").status(500).toFuture
      }
    }
    }