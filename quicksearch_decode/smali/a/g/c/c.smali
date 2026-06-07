.class public La/g/c/c;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# static fields
.field public static final a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

.field public static final b:La/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La/g/c/g;

    invoke-direct {v0}, La/g/c/g;-><init>()V

    sput-object v0, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, La/g/c/f;

    invoke-direct {v0}, La/g/c/f;-><init>()V

    sput-object v0, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 4
    invoke-static {}, La/g/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, La/g/c/e;

    invoke-direct {v0}, La/g/c/e;-><init>()V

    sput-object v0, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 6
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 7
    new-instance v0, La/g/c/d;

    invoke-direct {v0}, La/g/c/d;-><init>()V

    sput-object v0, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Landroidx/core/graphics/TypefaceCompatBaseImpl;

    invoke-direct {v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    sput-object v0, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 9
    :goto_0
    new-instance v0, La/d/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, La/d/e;-><init>(I)V

    sput-object v0, La/g/c/c;->b:La/d/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 11
    sget-object v0, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    invoke-static {p1, p2, p4}, La/g/c/c;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p2, La/g/c/c;->b:La/d/e;

    invoke-virtual {p2, p1, p0}, La/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[La/g/e/b$f;I)Landroid/graphics/Typeface;
    .locals 1

    .line 14
    sget-object v0, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[La/g/e/b$f;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILa/g/b/c/e$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7

    .line 2
    instance-of v1, p1, Landroidx/core/content/res/FontResourcesParserCompat$c;

    if-eqz v1, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$c;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$c;->a()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    move v4, v1

    :cond_1
    if-eqz p7, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$c;->c()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    move v5, v1

    .line 6
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$c;->b()La/g/e/a;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, La/g/e/b;->a(Landroid/content/Context;La/g/e/a;La/g/b/c/e$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_3
    sget-object v1, La/g/c/c;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v0, p1

    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$a;

    invoke-virtual {v1, p0, v0, p2, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$a;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p5, v0, p6}, La/g/b/c/e$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_4
    const/4 v1, -0x3

    .line 9
    invoke-virtual {p5, v1, p6}, La/g/b/c/e$a;->a(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 10
    sget-object v1, La/g/c/c;->b:La/d/e;

    invoke-static {p2, p3, p4}, La/g/c/c;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, La/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, La/g/c/c;->b:La/d/e;

    invoke-static {p0, p1, p2}, La/g/c/c;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, La/d/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method
