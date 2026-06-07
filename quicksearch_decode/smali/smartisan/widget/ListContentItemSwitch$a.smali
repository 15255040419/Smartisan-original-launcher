.class public Lsmartisan/widget/ListContentItemSwitch$a;
.super Ljava/lang/Object;
.source "ListContentItemSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/ListContentItemSwitch;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/ListContentItemSwitch;


# direct methods
.method public constructor <init>(Lsmartisan/widget/ListContentItemSwitch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItemSwitch$a;->a:Lsmartisan/widget/ListContentItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch$a;->a:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/ListContentItemSwitch;->a(Lsmartisan/widget/ListContentItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch$a;->a:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/ListContentItemSwitch;->a(Lsmartisan/widget/ListContentItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
