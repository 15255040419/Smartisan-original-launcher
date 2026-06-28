.class Landroidx/preference/PreferenceGroupAdapter$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceGroupAdapter;

.field final synthetic val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

.field final synthetic val$oldVisibleList:Ljava/util/List;

.field final synthetic val$visiblePreferenceList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .locals 0

    .line 139
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    iput-object p2, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    iput-object p3, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    iput-object p4, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 160
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 161
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    .line 159
    invoke-virtual {v0, p1, p0}, Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;->arePreferenceContentsTheSame(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 153
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 154
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    .line 152
    invoke-virtual {v0, p1, p0}, Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;->arePreferenceItemsTheSame(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public getNewListSize()I
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    .line 142
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
