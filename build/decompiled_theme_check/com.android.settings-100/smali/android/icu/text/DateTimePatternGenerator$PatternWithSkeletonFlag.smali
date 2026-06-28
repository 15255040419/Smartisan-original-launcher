.class Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternWithSkeletonFlag"
.end annotation


# instance fields
.field public pattern:Ljava/lang/String;

.field public skeletonWasSpecified:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1760
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 1761
    iput-boolean p2, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
