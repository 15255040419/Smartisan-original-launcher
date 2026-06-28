.class Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternWithMatcher"
.end annotation


# instance fields
.field public matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field public pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V
    .locals 0

    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1751
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 1752
    iput-object p2, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    return-void
.end method
