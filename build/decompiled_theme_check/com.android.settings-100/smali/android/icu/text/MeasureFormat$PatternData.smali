.class final Landroid/icu/text/MeasureFormat$PatternData;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PatternData"
.end annotation


# instance fields
.field final prefix:Ljava/lang/String;

.field final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "{0}"

    .line 1140
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1142
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$PatternData;->prefix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1143
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$PatternData;->suffix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1145
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/MeasureFormat$PatternData;->prefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    .line 1146
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$PatternData;->suffix:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$PatternData;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$PatternData;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
