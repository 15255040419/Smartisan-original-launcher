.class Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;)V
    .locals 0

    .line 108
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 112
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object v0, v0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    .line 113
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p3

    iput-boolean p0, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object v0, v0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    .line 116
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p3

    iput-boolean p0, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    :goto_0
    return-void
.end method
