# Class Project
### Jay Eichmuller 

I worked on this project by myself I didn’t have any other team members, but I did a few things to the language we had created in class. First I created two .t files, one with a bubble sort and the other with a comb sort that uses the language we created in class to sort arrays. I thought this was very cool to see an application of the language we created to use in known sorting functions. I also added the modulo operator into the tokenizer, parser, and evaluator. I thought that could be helpful in varying applications, although I didn’t make anything that uses it. Another addition I made was allowing our variables that were assigned boolean values to be able to be used inside of the while and if condition statements, since it wasn’t originally there. I was also interested in adding fstrings and I had started working on them but I did not have the time to completely implement them, with studying for my finals this week. Overall I thought this was interesting adding things to help build the language a bit.


# Additions

## Evaluator.py

```
        left_value, _ = evaluate(ast["left"], environment)
        right_value, _ = evaluate(ast["right"], environment)
        return left_value * right_value, False
    if ast["tag"] == "%":
        left_value, _ = evaluate(ast["left"], environment)
        right_value, _ = evaluate(ast["right"], environment)
        return left_value % right_value, False
    if ast["tag"] == "/":
        left_value, _ = evaluate(ast["left"], environment)
        right_value, _ = evaluate(ast["right"], environment)
```

```
            value, return_chain = evaluate(ast["value"], environment)
            return value, True
        return None, True

    if ast["tag"] == "boolean":
        if ast["value"] == 0:
            return 0, False
        elif ast["value"] == 1:
            return 1, False
        return None, False

    assert False, f"Unknown tag [{ast['tag']}] in AST"
```

```
    equals("4/2", {}, 2, {})
    equals("8/4/2", {}, 1, {})

def test_evaluate_modulo():
    print("test evaluate modulo")
    equals("1%1", {}, 0, {})
    equals("20%10", {}, 0, {})
    equals("13%10", {}, 3, {})
    equals("X%Y", {"X": 5.6, "Y": 1}, .5999999999999996)

def test_evaluate_negation():
    print("test evaluate negation")
```

```
    test_evaluate_division()
    test_evaluate_modulo()
    test_evaluate_negation()
```

## Parser.py

```
def parse_arithmetic_term(tokens):
    """
    arithmetic_term = arithmetic_factor { ("*" | "/" | "%") arithmetic_factor } ;
    """
    node, tokens = parse_arithmetic_factor(tokens)
    while tokens[0]["tag"] in ["*", "/", "%"]:
        tag = tokens[0]["tag"]
        next_node, tokens = parse_arithmetic_factor(tokens[1:])
        node = {"tag": tag, "left": node, "right": next_node}
```

## Tokenizer.py

```
    [r"[a-zA-Z_][a-zA-Z0-9_]*", "identifier"],  # identifiers
    [r"\%", "%"],
    [r"\+", "+"],
```
