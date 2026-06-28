.class final Landroid/icu/text/StringPrep$Values;
.super Ljava/lang/Object;
.source "StringPrep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringPrep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Values"
.end annotation


# instance fields
.field isIndex:Z

.field type:I

.field value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/StringPrep$1;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Landroid/icu/text/StringPrep$Values;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    .line 333
    iput v0, p0, Landroid/icu/text/StringPrep$Values;->value:I

    const/4 v0, -0x1

    .line 334
    iput v0, p0, Landroid/icu/text/StringPrep$Values;->type:I

    return-void
.end method
