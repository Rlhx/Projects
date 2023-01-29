

class Footer:
    text='this is a footer'
    def __init__(self,text):
        self.text = text
class MainPage:
    body = "hello main page"
    def __init__(self, header, footer):
        self.header = header
        self.footer = footer
class AboutPage:
    body = "hello about page"
    def __init__(self, header):
        self.header = header
        self.footer = Footer("hello about page footer")
class ContactPage:
    body = "hello contact page"
    def __init__(self,header,footer):
        self.header = header
        self.footer = footer

footer1 = Footer("hello footer")
main1 = MainPage("hello main page header", footer1)
about1 = AboutPage("hello about page header")
contact1 = ContactPage("hello contact page header", footer1)

footer1.text = "updated text"
main1.footer.text = "updated main page footer"

print(main1.footer.text)
print(about1.footer.text)
print(contact1.footer.text)

