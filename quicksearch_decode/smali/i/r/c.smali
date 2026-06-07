.class public Li/r/c;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final a:Ljava/lang/String; = "c"

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Li/r/c;->b:Ljava/util/List;

    .line 2
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.calculator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.gamestore"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.weather"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.notes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.recharge"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.android.musicfx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.recorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.cloudgallery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.smartisanos.textboom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Li/r/c;->b:Ljava/util/List;

    const-string v1, "com.sohu.inputmethod.sogou.chuizi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/widget/TextView;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;D)I
    .locals 2

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Li/r/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    invoke-static {p1, v0}, Li/h;->a(Landroid/widget/TextView;F)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;F)V
    .locals 0

    if-eqz p0, :cond_0

    .line 8
    invoke-static {p0, p1}, Li/h;->a(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Li/r/c;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
