RM = rm

msi: product.msi
product.msi:
	candle product.wxs
	light product.wixobj

test: product.msi
	cmd /c product.msi

clean:
	$(RM) -f product.wixpdb
	$(RM) -f product.msi
	$(RM) -f product.wixobj

download: dotnetfx35.exe Wix35.msi

dotnet:dotnetfx35.exe
dotnetfx35.exe:
	wget http://download.microsoft.com/download/2/0/E/20E90413-712F-438C-988E-FDAA79A8AC3D/dotnetfx35.exe

wix: Wix35.msi
.PHONY: wix
Wix35.msi:
	wget http://dl.dropbox.com/u/9140609/Wix35.msi
