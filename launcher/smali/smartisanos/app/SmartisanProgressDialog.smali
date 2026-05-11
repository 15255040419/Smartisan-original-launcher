.class public Lsmartisanos/app/SmartisanProgressDialog;
.super Landroid/app/ProgressDialog;
.source "SmartisanProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 0

    return-void
.end method

.method public setIndeterminateDrawableResource(I)V
    .locals 1

    invoke-virtual {p0}, Lsmartisanos/app/SmartisanProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisanos/app/SmartisanProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
