.class final Landroid/icu/text/SpoofChecker$ConfusableDataUtils;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfusableDataUtils"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FORMAT_VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1635
    const-class v0, Landroid/icu/text/SpoofChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final codePointAndLengthToKey(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static final keyToCodePoint(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final keyToLength(I)I
    .locals 1

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x18

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
