.class public Lsmartisanos/app/SmartisanProgressDialog;
.super Landroid/app/Dialog;
.source "SmartisanProgressDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mMessage:Ljava/lang/String;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x99000000

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v9, -0xe2dede

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v2, 0x6

    invoke-virtual {v5, v8, v9, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/ProgressBar;

    invoke-direct {v8, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v10, p0, Lsmartisanos/app/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_no_drawable

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_no_drawable
    iput-object v8, p0, Lsmartisanos/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    int-to-float v10, v2

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x10

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x2

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v11, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v8, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    div-int/lit8 v10, v2, 0x3

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lsmartisanos/app/SmartisanProgressDialog;->updateMessage()V
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {p1, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v5, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_done

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_done
    return-void
.end method

.method private updateMessage()V
    .registers 3

    .prologue
    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessage:Ljava/lang/String;

    invoke-direct {p0}, Lsmartisanos/app/SmartisanProgressDialog;->updateMessage()V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_store

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_return

    :cond_store
    iput-object p1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_return
    return-void
.end method

.method public setIndeterminateDrawableResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisanos/app/SmartisanProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
