.class public interface abstract Lcom/android/settings/wifi/WifiConfigUiBase;
.super Ljava/lang/Object;
.source "WifiConfigUiBase.java"


# static fields
.field public static final MODE_CONNECT:I = 0x1

.field public static final MODE_MODIFY:I = 0x2

.field public static final MODE_VIEW:I


# virtual methods
.method public abstract dispatchSubmit()V
.end method

.method public abstract getCancelButton()Landroid/widget/Button;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getController()Lcom/android/settings/wifi/WifiConfigController;
.end method

.method public abstract getForgetButton()Landroid/widget/Button;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getMode()I
.end method

.method public abstract getSubmitButton()Landroid/widget/Button;
.end method

.method public abstract setCancelButton(Ljava/lang/CharSequence;)V
.end method

.method public abstract setForgetButton(Ljava/lang/CharSequence;)V
.end method

.method public abstract setSubmitButton(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method
