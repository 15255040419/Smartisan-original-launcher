.class public Landroid/icu/text/BidiClassifier;
.super Ljava/lang/Object;
.source "BidiClassifier.java"


# instance fields
.field protected context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public classify(I)I
    .locals 0

    const/16 p0, 0x17

    return p0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-object p0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-void
.end method
