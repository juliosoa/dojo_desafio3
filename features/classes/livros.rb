class ControleLivros

    include HTTParty
	base_uri = "http://fakerestapi.azurewebsites.net/api/Book"
    format :json

    attr_accessor :request_body

### METODO POST ################################################################### 	

    def createBook(title,description,pageCount,excerpt,publishDate)
        response = HTTParty.post("http://fakerestapi.azurewebsites.net/api/Books", 
        :body =>    { 'title'        =>   title,
                      'description'  =>   description,
                      'pageCount'    =>   pageCount,
                      'excerpt'      =>   excerpt,
                      'publishDate'  =>   publishDate }.to_json,
        :headers => { 'Content-Type' => 'application/json' })
    end 

### METODO GET ####################################################################

    def getBook(index=nil)
        self.class.get("http://fakerestapi.azurewebsites.net/api/Books/#{index}")
    end

### METODO PUTS ###################################################################

    def putBook(id, excerpt)
        response = HTTParty.put("http://fakerestapi.azurewebsites.net/api/Books/#{id}", 
        :body =>    { 'id'           =>   id,  
                      'excerpt'      =>   excerpt      }.to_json,                    
        :headers => { 'Content-Type' =>  'application/json'})
    end

end