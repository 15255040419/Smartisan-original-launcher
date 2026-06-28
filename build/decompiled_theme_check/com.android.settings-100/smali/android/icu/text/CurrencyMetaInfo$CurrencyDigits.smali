.class public final Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyDigits"
.end annotation


# instance fields
.field public final fractionDigits:I

.field public final roundingIncrement:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    .line 362
    iput p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 371
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
