import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 11.0
    private let totalDuration: Double = (3*60+26)
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30) {
            HStack{
                Image(systemName: "chevron.down")
                    .font(.title)
                    .foregroundColor(.white)
                Text("                                        One for the road ")
                    .font(.system(size: 9))
                    .foregroundColor(.white)
                Text("                      ...")
                    .font(.system(size: 26))
                    .bold()
                    .foregroundColor(.white)
                
                
            }
            HStack{
                Spacer(minLength: 300)
                
            }
            Image("paradise")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 300)
            //.cornerRadius(10)
            
            
            HStack{
                VStack(alignment: .leading) {
                    Text("Paradise")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                    
                    
                    
                    Text("Rex Orange County")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    
                    
                    
                }
                Spacer()
                
                Image(systemName: "suit.heart")
                    .font(.title)
                    .foregroundColor(.white)
            }
       

            
            HStack{
                Text("0:11")
                .font(.system(size: 9))
                .foregroundColor(.white)
                
                Slider(value: $progress, in:0...totalDuration)
                    .accentColor(.white)
                    .padding(.horizontal,10)
                
                Text("-3:26")
                .font(.system(size: 9))
                .foregroundColor(.white)

            }
            .padding(.horizontal, 20)

            
        
            HStack(spacing:45){
                
                    Image(systemName: "shuffle")
                    .font(.system(size: 30))

                    Image(systemName: "backward.end.fill")
                    .font(.system(size: 30))
                    Image(systemName: "pause.circle.fill")
                        .font(.system(size: 60))
                    Image(systemName: "forward.end.fill")
                    .font(.system(size: 30))
                    Image(systemName: "repeat")
                    .font(.system(size: 20))
                
                

                
                
            }
            .foregroundColor(.white)
            
            HStack{
                Image(systemName: "shareplay")
                .font(.system(size: 20))
                .foregroundColor(.white)
                
                Spacer(minLength: 10)
                Image(systemName: "square.and.arrow.up")
                .font(.system(size: 20))
                .foregroundColor(.white)
                Image(systemName: "text.line.magnify")
                .font(.system(size: 20))
                .foregroundColor(.white)

            }
            .foregroundColor(.white)
            
            Spacer()
            
            
        }
        .padding()
        .background(Color.green.ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}
