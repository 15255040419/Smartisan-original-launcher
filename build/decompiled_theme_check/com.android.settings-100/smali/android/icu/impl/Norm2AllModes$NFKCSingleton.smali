.class final Landroid/icu/impl/Norm2AllModes$NFKCSingleton;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFKCSingleton"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 387
    new-instance v0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    const-string v1, "nfkc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;-><init>(Ljava/lang/String;Landroid/icu/impl/Norm2AllModes$1;)V

    sput-object v0, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->INSTANCE:Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    .locals 1

    .line 386
    sget-object v0, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->INSTANCE:Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    return-object v0
.end method
