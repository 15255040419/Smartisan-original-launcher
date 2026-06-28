.class public final Landroid/icu/util/CharsTrie$Entry;
.super Ljava/lang/Object;
.source "CharsTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public chars:Ljava/lang/CharSequence;

.field public value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/CharsTrie$1;)V
    .locals 0

    .line 402
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Entry;-><init>()V

    return-void
.end method
