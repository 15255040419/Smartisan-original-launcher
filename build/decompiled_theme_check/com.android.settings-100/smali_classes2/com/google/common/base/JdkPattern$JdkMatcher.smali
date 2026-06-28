.class final Lcom/google/common/base/JdkPattern$JdkMatcher;
.super Lcom/google/common/base/CommonMatcher;
.source "JdkPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/JdkPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkMatcher"
.end annotation


# instance fields
.field final matcher:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/common/base/CommonMatcher;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Matcher;

    iput-object p1, p0, Lcom/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method end()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    return p0
.end method

.method find()Z
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method find(I)Z
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p0

    return p0
.end method

.method matches()Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method start()I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/common/base/JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    return p0
.end method
