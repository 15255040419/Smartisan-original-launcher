.class Landroid/icu/text/UnicodeSet$EntryRangeIterable;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRangeIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/UnicodeSet;


# direct methods
.method private constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 4180
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$1;)V
    .locals 0

    .line 4180
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    .line 4183
    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;

    iget-object p0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$1;)V

    return-object v0
.end method
