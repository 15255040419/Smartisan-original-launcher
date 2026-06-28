.class public Landroidx/preference/EditTextPreference;
.super Landroidx/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/EditTextPreference$SimpleSummaryProvider;,
        Landroidx/preference/EditTextPreference$SavedState;,
        Landroidx/preference/EditTextPreference$OnBindEditTextListener;
    }
.end annotation


# instance fields
.field private mOnBindEditTextListener:Landroidx/preference/EditTextPreference$OnBindEditTextListener;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 62
    sget v0, Landroidx/preference/R$attr;->editTextPreferenceStyle:I

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    sget-object v0, Landroidx/preference/R$styleable;->EditTextPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Landroidx/preference/R$styleable;->EditTextPreference_useSimpleSummaryProvider:I

    sget p3, Landroidx/preference/R$styleable;->EditTextPreference_useSimpleSummaryProvider:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    invoke-static {}, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->getInstance()Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/EditTextPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method getOnBindEditTextListener()Landroidx/preference/EditTextPreference$OnBindEditTextListener;
    .locals 0

    .line 162
    iget-object p0, p0, Landroidx/preference/EditTextPreference;->mOnBindEditTextListener:Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object p0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    check-cast p1, Landroidx/preference/EditTextPreference$SavedState;

    .line 136
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 137
    iget-object p1, p1, Landroidx/preference/EditTextPreference$SavedState;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 116
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 122
    :cond_0
    new-instance v1, Landroidx/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 123
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroidx/preference/EditTextPreference$SavedState;->mText:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Landroidx/preference/EditTextPreference;->mOnBindEditTextListener:Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 78
    iput-object p1, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 82
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result p1

    if-eq p1, v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->notifyChanged()V

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/preference/DialogPreference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
