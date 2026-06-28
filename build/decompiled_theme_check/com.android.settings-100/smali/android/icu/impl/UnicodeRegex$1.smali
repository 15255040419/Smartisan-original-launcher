.class Landroid/icu/impl/UnicodeRegex$1;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeRegex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UnicodeRegex;


# direct methods
.method constructor <init>(Landroid/icu/impl/UnicodeRegex;)V
    .locals 0

    .line 361
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex$1;->this$0:Landroid/icu/impl/UnicodeRegex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    sub-int/2addr v0, p2

    return v0

    .line 369
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
