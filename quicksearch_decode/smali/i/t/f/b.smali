.class public Li/t/f/b;
.super Ljava/lang/Object;
.source "LBLetter.java"


# static fields
.field public static d:Li/t/f/b;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#"

    .line 1
    invoke-static {v0}, Li/t/f/b;->a(Ljava/lang/String;)Li/t/f/b;

    move-result-object v0

    sput-object v0, Li/t/f/b;->d:Li/t/f/b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Li/t/f/b;->a:I

    .line 3
    iput-object p2, p0, Li/t/f/b;->b:Ljava/lang/String;

    .line 4
    iget p1, p0, Li/t/f/b;->a:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    .line 5
    array-length p1, p3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 6
    iput-object p3, p0, Li/t/f/b;->c:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "symbol must have 3 bitmaps!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Li/t/f/b;
    .locals 3

    .line 2
    new-instance v0, Li/t/f/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Li/t/f/b;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Landroid/graphics/Bitmap;)Li/t/f/b;
    .locals 2

    .line 3
    new-instance v0, Li/t/f/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Li/t/f/b;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Li/t/f/b;
    .locals 3

    .line 2
    new-instance v0, Li/t/f/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Li/t/f/b;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/t/f/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()[Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Li/t/f/b;->c:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Li/t/f/b;->a:I

    return v0
.end method
