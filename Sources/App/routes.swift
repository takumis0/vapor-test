import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        let api = {
          "meta": {
            "code": 200
          },
          "data": [
            {
              "question": "Q1. There is a house, One Enters it blind and comes out seeing. What is it?",
              "answer1": "School",
              "answer2": "Wearhouse",
              "answer3": "Restaurant",
              "answer4": "Karaoke",
              "correctAnswerNumber": "1"
            },
            {
              "question": "Q2. What goes on four legs in the morning, on two legs at noon, and three legs in the evening?",
              "answer1": "Watch",
              "answer2": "Spider",
              "answer3": "Human",
              "answer4": "Flower",
              "correctAnswerNumber": "3"
            },
            {
              "question": "Q3. As I was going to St. Ives, I met a man with seven wives, Each wife had seven sacks, Each sack had seven cats, Each cat had seven kits: Kits, cats, sacks, and wives, How many were there going to St. Ives?",
              "answer1": "One",
              "answer2": "Two",
              "answer3": "Three",
              "answer4": "Four",
              "correctAnswerNumber": "1"
            },
            {
              "question": "Q4. There is a house, One Enters it blind and comes out seeing. What is it?",
              "answer1": "School",
              "answer2": "Wearhouse",
              "answer3": "Restaurant",
              "answer4": "Karaoke",
              "correctAnswerNumber": "1"
            },
            {
              "question": "Q5. What goes on four legs in the morning, on two legs at noon, and three legs in the evening?",
              "answer1": "Watch",
              "answer2": "Spider",
              "answer3": "Human",
              "answer4": "Flower",
              "correctAnswerNumber": "3"
            }
          ]
        }
                
        return api
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
