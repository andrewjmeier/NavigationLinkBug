# NavigationLink Bug

Check out the .mov file for a screen recording of the bug. 

### Change state with button

- Run the app and navigatae to page 2.
- Tap the page 4 button on the detail page.
- Observe that the detail page doesn't change. 
- Go back and then tap on page 4
- Observe that the new screen is not pushed on the stack because the selected state already had page 4. 

### Change state with deep link 

- Run the app and navigate to one of the detail pages. 
- Launch the app through a deep link `xcrun simctl openurl booted "myuniqueone://7"`
- Observe that the detail page did not update to the new page 
