.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUStringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1001
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;-><init>()V

    sput-object v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->INSTANCE:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I
    .locals 1

    .line 990
    iget-object p0, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 991
    iget-object v0, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 997
    :cond_1
    iget-object p0, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    iget-object p1, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 987
    check-cast p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    check-cast p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I

    move-result p0

    return p0
.end method
