.class public Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;
.super Ljava/lang/Exception;
.source "RegexUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu/org/checkerframework/checker/regex/RegexUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckedPatternSyntaxException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x56f86fd2a4752688L


# instance fields
.field private final pse:Ljava/util/regex/PatternSyntaxException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 99
    new-instance v0, Ljava/util/regex/PatternSyntaxException;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;-><init>(Ljava/util/regex/PatternSyntaxException;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/PatternSyntaxException;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 87
    iput-object p1, p0, Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {p0}, Ljava/util/regex/PatternSyntaxException;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 118
    iget-object p0, p0, Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {p0}, Ljava/util/regex/PatternSyntaxException;->getIndex()I

    move-result p0

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {p0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;->pse:Ljava/util/regex/PatternSyntaxException;

    invoke-virtual {p0}, Ljava/util/regex/PatternSyntaxException;->getPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
