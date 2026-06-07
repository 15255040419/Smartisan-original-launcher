.class public Lb/a/a/c1/g/a;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field public static volatile a:Landroid/graphics/Bitmap;

.field public static volatile b:Landroid/renderscript/Allocation;

.field public static volatile c:Landroid/renderscript/Allocation;

.field public static d:Landroid/renderscript/ScriptIntrinsicBlur;

.field public static e:Landroid/renderscript/RenderScript;


# direct methods
.method public static a(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 8
    sget-object v0, Lb/a/a/c1/g/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-float p0, p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 10
    sget-object p0, Lb/a/a/c1/g/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    sget-object v0, Lb/a/a/c1/g/a;->b:Landroid/renderscript/Allocation;

    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 11
    sget-object p0, Lb/a/a/c1/g/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    sget-object v0, Lb/a/a/c1/g/a;->c:Landroid/renderscript/Allocation;

    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 12
    sget-object p0, Lb/a/a/c1/g/a;->c:Landroid/renderscript/Allocation;

    sget-object v0, Lb/a/a/c1/g/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 13
    sget-object p0, Lb/a/a/c1/g/a;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lb/a/a/c1/g/a;->a:Landroid/graphics/Bitmap;

    .line 2
    sget-object v0, Lb/a/a/c1/g/a;->e:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/g/a;->e:Landroid/renderscript/RenderScript;

    .line 4
    :cond_1
    sget-object p0, Lb/a/a/c1/g/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez p0, :cond_2

    .line 5
    sget-object p0, Lb/a/a/c1/g/a;->e:Landroid/renderscript/RenderScript;

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/g/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 6
    :cond_2
    sget-object p0, Lb/a/a/c1/g/a;->e:Landroid/renderscript/RenderScript;

    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/g/a;->b:Landroid/renderscript/Allocation;

    .line 7
    sget-object p0, Lb/a/a/c1/g/a;->e:Landroid/renderscript/RenderScript;

    sget-object p1, Lb/a/a/c1/g/a;->a:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/g/a;->c:Landroid/renderscript/Allocation;

    :cond_3
    :goto_0
    return-void
.end method
