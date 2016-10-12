schedule(monday, programming).
schedule(monday, math).
schedule(tuesday, science).
schedule(tuesday, english).
schedule(wednesday, chinese).
schedule(friday, science).
schedule(friday, badminton).
schedule(sunday, self).
schedule(sunday, math).

difficulty(programming, hard).
difficulty(math, easy).
difficulty(science, medium).
difficulty(english, medium).
difficulty(chinese, hard).
difficulty(badminton, easy).
difficulty(self, hard).

classInformation(Day, Class, Diff) :-
  schedule(Day, Class),
  difficulty(Class, Diff).
