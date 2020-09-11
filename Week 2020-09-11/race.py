# This calculates the answer for the Riddler classic computationally.
from itertools import permutations

# inputs are the raw placements
def score_outcome(me, team1, team2, other):
    actual_me = me
    scores = [5, 3, 2, 1]
    if team1 < me and team2 > me:
        actual_me = me + 1
    elif team2 < me and team1 > me:
        actual_me = me + 1
    return scores[actual_me - 1]

outcomes = []

for outcome in permutations([1, 2, 3, 4]):
    outcomes.append(score_outcome(*outcome))

print("{}/{}".format(sum(outcomes), 24))