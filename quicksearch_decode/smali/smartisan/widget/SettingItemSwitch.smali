.class public Lsmartisan/widget/SettingItemSwitch;
.super Lsmartisan/widget/ListContentItemSwitch;
.source "SettingItemSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SettingItemSwitch$d;
    }
.end annotation


# instance fields
.field public A:Landroid/view/View$OnClickListener;

.field public B:Z

.field public final C:Landroid/os/Handler;

.field public z:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SettingItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SettingItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lsmartisan/widget/SettingItemSwitch$d;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lsmartisan/widget/SettingItemSwitch$d;-><init>(Lsmartisan/widget/SettingItemSwitch$a;)V

    iput-object p1, p0, Lsmartisan/widget/SettingItemSwitch;->C:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SettingItemSwitch;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SettingItemSwitch;->B:Z

    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/SettingItemSwitch;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/SettingItemSwitch;->B:Z

    return p1
.end method

.method public static synthetic b(Lsmartisan/widget/SettingItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SettingItemSwitch;->z:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public static synthetic c(Lsmartisan/widget/SettingItemSwitch;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SettingItemSwitch;->C:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic d(Lsmartisan/widget/SettingItemSwitch;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SettingItemSwitch;->A:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 2
    invoke-super {p0}, Lsmartisan/widget/ListContentItem;->c()V

    .line 3
    sget v0, Lsmartisan/widget/R$id;->info_btn_viewstub:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    invoke-super {p0}, Lsmartisan/widget/ListContentItemSwitch;->d()V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    .line 4
    new-instance v1, Lsmartisan/widget/SettingItemSwitch$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/SettingItemSwitch$a;-><init>(Lsmartisan/widget/SettingItemSwitch;)V

    invoke-super {p0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5
    new-instance v1, Lsmartisan/widget/SettingItemSwitch$b;

    invoke-direct {v1, p0}, Lsmartisan/widget/SettingItemSwitch$b;-><init>(Lsmartisan/widget/SettingItemSwitch;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/SwitchEx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v1, Lsmartisan/widget/SettingItemSwitch$c;

    invoke-direct {v1, p0}, Lsmartisan/widget/SettingItemSwitch$c;-><init>(Lsmartisan/widget/SettingItemSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getDefaultMidLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->setting_item_mid_layout:I

    return v0
.end method

.method public setIconMarginRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconMarginRightDimen(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SettingItemSwitch;->setIconMarginRight(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/SettingItemSwitch;->setIconMarginRight(I)V

    :goto_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setIcon(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SettingItemSwitch;->z:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setSwitchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SettingItemSwitch;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSwitchDisabledTips(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setDisabledTips(I)V

    return-void
.end method

.method public setSwitchEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemSwitch;->setEnabled(Z)V

    return-void
.end method
