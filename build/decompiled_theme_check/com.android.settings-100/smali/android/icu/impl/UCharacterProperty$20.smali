.class Landroid/icu/impl/UCharacterProperty$20;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0

    .line 567
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$20;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 0

    .line 570
    invoke-static {p1}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result p0

    return p0
.end method
