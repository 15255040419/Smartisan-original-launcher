.class public Lcom/android/settingslib/development/SystemPropPoker;
.super Ljava/lang/Object;
.source "SystemPropPoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemPropPoker"

.field private static final sInstance:Lcom/android/settingslib/development/SystemPropPoker;


# instance fields
.field private mBlockPokes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/settingslib/development/SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settingslib/development/SystemPropPoker;-><init>()V

    sput-object v0, Lcom/android/settingslib/development/SystemPropPoker;->sInstance:Lcom/android/settingslib/development/SystemPropPoker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    return-void
.end method

.method public static getInstance()Lcom/android/settingslib/development/SystemPropPoker;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/settingslib/development/SystemPropPoker;->sInstance:Lcom/android/settingslib/development/SystemPropPoker;

    return-object v0
.end method


# virtual methods
.method public blockPokes()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    return-void
.end method

.method createPokerTask()Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
    .locals 0

    .line 58
    new-instance p0, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;

    invoke-direct {p0}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;-><init>()V

    return-object p0
.end method

.method public poke()V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker;->createPokerTask()Lcom/android/settingslib/development/SystemPropPoker$PokerTask;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public unblockPokes()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    return-void
.end method
