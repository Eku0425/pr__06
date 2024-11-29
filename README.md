# pr_6
# 🚀 🌌 Space App: 

# Description:

👉Imports and Setup: Import necessary packages (flutter/material.dart) and set up a basic Flutter app (PlanetsApp) with an app bar and a main widget (PlanetDetails).

✨AnimatedContainer: Inside PlanetDetails, use AnimatedContainer as the main widget. It animates changes to its properties like width, height, and borderRadius based on _isLarge state.

✨State Management: _PlanetDetailsState manages the _isLarge boolean state. Tapping on the container toggles _isLarge, triggering the animation due to setState().

✨GestureDetector: Wraps the AnimatedContainer to detect taps and call _toggleSize to change _isLarge.

✨Animation Properties: duration specifies how long the animation should take (1 second in this case), and curve defines the animation's speed curve (here, Curves.fastOutSlowIn for a smooth transition).

✨Decoration and Child: AnimatedContainer decorates with a blue color and rounded corners (borderRadius). Its child (Text) changes based on _isLarge state.

This example demonstrates a basic use of animation with AnimatedContainer in Flutter, which you can adapt and expand upon for your planets app.

<img src="https://github.com/user-attachments/assets/0cdbd189-7cc9-42df-ab98-d96f441e1896" height =25% width=25%>
<img src="https://github.com/user-attachments/assets/7ab592ac-b034-4ba2-879a-49dc7fb67f1b" height =25% width=25%>
<img src="https://github.com/user-attachments/assets/0351fff2-99ef-4012-941b-866f80dc4856" height =25%  width=25%>



