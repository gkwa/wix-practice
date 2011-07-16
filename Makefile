msi: product.msi
product.msi:
	candle product.wxs
	light product.wixobj

test: product.msi
	cmd /c product.msi

clean:
	rm -f \
		product.wixpdb \
		product.msi \
		product.wixobj
