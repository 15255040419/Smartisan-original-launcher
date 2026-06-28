.class Landroid/icu/text/PluralRules$1;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7f2b2ad155970a18L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
