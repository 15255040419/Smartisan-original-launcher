.class abstract Landroid/icu/text/CharsetRecognizer;
.super Ljava/lang/Object;
.source "CharsetRecognizer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
.end method
