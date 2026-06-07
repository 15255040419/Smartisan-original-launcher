.class public Landroidx/core/graphics/TypefaceCompatBaseImpl$a;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/TypefaceCompatBaseImpl;->a([La/g/e/b$f;I)La/g/e/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor<",
        "La/g/e/b$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/g/e/b$f;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, La/g/e/b$f;->d()I

    move-result p1

    return p1
.end method

.method public b(La/g/e/b$f;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, La/g/e/b$f;->e()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, La/g/e/b$f;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl$a;->a(La/g/e/b$f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, La/g/e/b$f;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl$a;->b(La/g/e/b$f;)Z

    move-result p1

    return p1
.end method
