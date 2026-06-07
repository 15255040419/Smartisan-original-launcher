.class public Lsmartisan/widget/SmartisanRadioGroup$a;
.super Ljava/lang/Object;
.source "SmartisanRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanRadioGroup;->a(Lsmartisan/widget/SmartisanRadioShadowButton;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsmartisan/widget/SmartisanRadioGroup;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmartisanRadioGroup;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanRadioGroup$a;->b:Lsmartisan/widget/SmartisanRadioGroup;

    iput p2, p0, Lsmartisan/widget/SmartisanRadioGroup$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanRadioGroup$a;->b:Lsmartisan/widget/SmartisanRadioGroup;

    invoke-static {p1}, Lsmartisan/widget/SmartisanRadioGroup;->a(Lsmartisan/widget/SmartisanRadioGroup;)Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanRadioGroup$a;->b:Lsmartisan/widget/SmartisanRadioGroup;

    invoke-static {p1}, Lsmartisan/widget/SmartisanRadioGroup;->a(Lsmartisan/widget/SmartisanRadioGroup;)Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    move-result-object p1

    iget v0, p0, Lsmartisan/widget/SmartisanRadioGroup$a;->a:I

    invoke-interface {p1, v0}, Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;->onRadioTabClick(I)V

    :cond_0
    return-void
.end method
