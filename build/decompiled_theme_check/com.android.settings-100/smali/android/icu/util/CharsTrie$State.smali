.class public final Landroid/icu/util/CharsTrie$State;
.super Ljava/lang/Object;
.source "CharsTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private chars:Ljava/lang/CharSequence;

.field private pos:I

.field private remainingMatchLength:I

.field private root:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;
    .locals 0

    .line 78
    iget-object p0, p0, Landroid/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$002(Landroid/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 78
    iput-object p1, p0, Landroid/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$100(Landroid/icu/util/CharsTrie$State;)I
    .locals 0

    .line 78
    iget p0, p0, Landroid/icu/util/CharsTrie$State;->root:I

    return p0
.end method

.method static synthetic access$102(Landroid/icu/util/CharsTrie$State;I)I
    .locals 0

    .line 78
    iput p1, p0, Landroid/icu/util/CharsTrie$State;->root:I

    return p1
.end method

.method static synthetic access$200(Landroid/icu/util/CharsTrie$State;)I
    .locals 0

    .line 78
    iget p0, p0, Landroid/icu/util/CharsTrie$State;->pos:I

    return p0
.end method

.method static synthetic access$202(Landroid/icu/util/CharsTrie$State;I)I
    .locals 0

    .line 78
    iput p1, p0, Landroid/icu/util/CharsTrie$State;->pos:I

    return p1
.end method

.method static synthetic access$300(Landroid/icu/util/CharsTrie$State;)I
    .locals 0

    .line 78
    iget p0, p0, Landroid/icu/util/CharsTrie$State;->remainingMatchLength:I

    return p0
.end method

.method static synthetic access$302(Landroid/icu/util/CharsTrie$State;I)I
    .locals 0

    .line 78
    iput p1, p0, Landroid/icu/util/CharsTrie$State;->remainingMatchLength:I

    return p1
.end method
