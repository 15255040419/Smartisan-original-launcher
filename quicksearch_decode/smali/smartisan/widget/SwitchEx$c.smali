.class public final Lsmartisan/widget/SwitchEx$c;
.super Ljava/lang/Object;
.source "SwitchEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SwitchEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SwitchEx;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SwitchEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SwitchEx$c;->a:Lsmartisan/widget/SwitchEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsmartisan/widget/SwitchEx;Lsmartisan/widget/SwitchEx$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/SwitchEx$c;-><init>(Lsmartisan/widget/SwitchEx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx$c;->a:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisan/widget/SwitchEx;->performClick()Z

    return-void
.end method
