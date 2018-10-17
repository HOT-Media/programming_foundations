Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. 

The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

Example:
```ruby
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'



.split.map idx CASE_HASH... if idx(/integer/) idx else CASE_HASH(idx)