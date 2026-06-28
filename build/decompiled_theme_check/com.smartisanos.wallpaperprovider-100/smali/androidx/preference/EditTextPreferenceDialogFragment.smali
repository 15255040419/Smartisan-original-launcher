.class public Landroidx/preference/EditTextPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "EditTextPreferenceDialogFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getEditTextPreference()Landroidx/preference/EditTextPreference;
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/EditTextPreference;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragment;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragment;

    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected needInputMethod()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 80
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 82
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 63
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iget-object p0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
