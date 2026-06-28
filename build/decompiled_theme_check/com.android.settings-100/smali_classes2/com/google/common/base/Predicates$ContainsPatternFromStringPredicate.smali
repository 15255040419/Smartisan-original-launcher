.class Lcom/google/common/base/Predicates$ContainsPatternFromStringPredicate;
.super Lcom/google/common/base/Predicates$ContainsPatternPredicate;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainsPatternFromStringPredicate"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 675
    invoke-static {p1}, Lcom/google/common/base/Platform;->compilePattern(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$ContainsPatternPredicate;-><init>(Lcom/google/common/base/CommonPattern;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Predicates.containsPattern("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/base/Predicates$ContainsPatternFromStringPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    invoke-virtual {p0}, Lcom/google/common/base/CommonPattern;->pattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
