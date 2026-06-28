.class Landroid/icu/text/Bidi$ImpTabPair;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImpTabPair"
.end annotation


# instance fields
.field impact:[[S

.field imptab:[[[B


# direct methods
.method constructor <init>([[B[[B[S[S)V
    .locals 3

    .line 2845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [[[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 2846
    iput-object v1, p0, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    new-array p2, v0, [[S

    aput-object p3, p2, v2

    aput-object p4, p2, p1

    .line 2847
    iput-object p2, p0, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    return-void
.end method
