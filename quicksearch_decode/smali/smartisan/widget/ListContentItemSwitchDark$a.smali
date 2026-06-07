.class public Lsmartisan/widget/ListContentItemSwitchDark$a;
.super Ljava/lang/Object;
.source "ListContentItemSwitchDark.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/ListContentItemSwitchDark;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/ListContentItemSwitchDark;


# direct methods
.method public constructor <init>(Lsmartisan/widget/ListContentItemSwitchDark;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItemSwitchDark$a;->a:Lsmartisan/widget/ListContentItemSwitchDark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitchDark$a;->a:Lsmartisan/widget/ListContentItemSwitchDark;

    invoke-static {v0}, Lsmartisan/widget/ListContentItemSwitchDark;->a(Lsmartisan/widget/ListContentItemSwitchDark;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitchDark$a;->a:Lsmartisan/widget/ListContentItemSwitchDark;

    invoke-static {v0}, Lsmartisan/widget/ListContentItemSwitchDark;->a(Lsmartisan/widget/ListContentItemSwitchDark;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
