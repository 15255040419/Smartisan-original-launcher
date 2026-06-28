.class final Lcom/google/common/base/JdkPattern;
.super Lcom/google/common/base/CommonPattern;
.source "JdkPattern.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/JdkPattern$JdkMatcher;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/common/base/CommonPattern;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 58
    instance-of v0, p1, Lcom/google/common/base/JdkPattern;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    check-cast p1, Lcom/google/common/base/JdkPattern;

    iget-object p1, p1, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method flags()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->flags()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/CommonMatcher;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/common/base/JdkPattern$JdkMatcher;

    iget-object p0, p0, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/base/JdkPattern$JdkMatcher;-><init>(Ljava/util/regex/Matcher;)V

    return-object v0
.end method

.method pattern()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/common/base/JdkPattern;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
