.class public Lsmartisan/widget/ListContentItemSwitchDark$b;
.super Ljava/lang/Object;
.source "ListContentItemSwitchDark.java"

# interfaces
.implements Lsmartisan/widget/ListContentItem$OnDisabledClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/ListContentItemSwitchDark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;


# direct methods
.method public constructor <init>(Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemSwitchDark$b;->a(Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;Lsmartisan/widget/ListContentItemSwitchDark$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ListContentItemSwitchDark$b;-><init>(Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/ListContentItemSwitchDark$b;Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemSwitchDark$b;->a(Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;)V

    return-void
.end method


# virtual methods
.method public final a(Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lsmartisan/widget/ListContentItemSwitchDark$b;->a:Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;

    return-void
.end method

.method public onDisabledClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitchDark$b;->a:Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lsmartisan/widget/ListContentItemSwitchDark$SwitcherCallback;->onDisabledSwitchClicked()V

    :cond_0
    return-void
.end method
