**Section 11: Revisiting Data Types**
- Storing Text
- VARCHAR
- CHAR
- What's the difference?
- CHAR has a fixed length
- Char(3) -> Only 3 Characters Allowed
- The length of a CHAR column is fixed to the length that you declare when you create the table. The length can be any value from 0 to 255. When CHAR values are stored, they are right-padded with spaces to the specified length. When CHAR values are retrieved, trailing spaces are removed unless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.
- CHAR is faster for fixed length text
  - EXAMPLES:
    - State Abbreviations: CA, NY
    - Yes/No Flags: Y/N
    - Sex: M/F
- Otherwise...USE VARCHAR

**NUMBERS**
- *INT* ( Whole Numbers )
- *DECIMAL* 
- DECIMAL(13, 2)
- First Number --> Total Number of Digits
- Second Number --> Digits After Decimal
  - EXAMPLE:
    - DECIMAL(5, 2)
      - 999.99 [ 5 Digits / 2 Decimal Spots ]
- There's also:
- **FLOAT**
- **DOUBLE**
- Store larger numbers using less space BUT it comes at the cost of precision

**ONTO DATES & TIMES**
- DATE - Values with a date but no time 
- 'YYYY-MM-DD' Format
- 
- TIME - Values with a time but no date
- 'HH:MM:SS' Format

- DATETIME - Values with a Date AND Time 
- 'YYYY-MM-DD HH:MM:SS' Format