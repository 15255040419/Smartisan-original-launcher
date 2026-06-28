.class public abstract Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractLogdSizePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final ACTION_LOGD_SIZE_UPDATED:Ljava/lang/String; = "com.android.settingslib.development.AbstractLogdSizePreferenceController.LOGD_SIZE_UPDATED"

.field static final DEFAULT_SNET_TAG:Ljava/lang/String; = "I"

.field public static final EXTRA_CURRENT_LOGD_VALUE:Ljava/lang/String; = "CURRENT_LOGD_VALUE"

.field static final LOW_RAM_CONFIG_PROPERTY_KEY:Ljava/lang/String; = "ro.config.low_ram"

.field private static final SELECT_LOGD_DEFAULT_SIZE_PROPERTY:Ljava/lang/String; = "ro.logd.size"

.field static final SELECT_LOGD_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "262144"

.field static final SELECT_LOGD_MINIMUM_SIZE_VALUE:Ljava/lang/String; = "65536"

.field static final SELECT_LOGD_OFF_SIZE_MARKER_VALUE:Ljava/lang/String; = "32768"

.field private static final SELECT_LOGD_RUNTIME_SNET_TAG_PROPERTY:Ljava/lang/String; = "log.tag.snet_event_log"

.field private static final SELECT_LOGD_SIZE_KEY:Ljava/lang/String; = "select_logd_size"

.field static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"

.field static final SELECT_LOGD_SNET_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag.snet_event_log"

.field private static final SELECT_LOGD_SVELTE_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "65536"

.field static final SELECT_LOGD_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag"

.field static final SELECT_LOGD_TAG_SILENCE:Ljava/lang/String; = "Settings"


# instance fields
.field private mLogdSize:Landroidx/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private defaultLogdSizeValue()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.logd.size"

    .line 94
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string p0, "ro.config.low_ram"

    .line 96
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "65536"

    goto :goto_0

    :cond_1
    const-string p0, "262144"

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "select_logd_size"

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroidx/preference/ListPreference;

    :cond_0
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "select_logd_size"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->writeLogdSizeOption(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateLogdSizeValues()V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_7

    const-string v0, "persist.log.tag"

    .line 107
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.logd.size"

    .line 108
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "Settings"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "32768"

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settingslib.development.AbstractLogdSizePreferenceController.LOGD_SIZE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "CURRENT_LOGD_VALUE"

    .line 114
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settingslib/R$array;->select_logd_size_values:I

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$array;->select_logd_size_titles:I

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "ro.config.low_ram"

    .line 123
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroidx/preference/ListPreference;

    sget v3, Lcom/android/settingslib/R$array;->select_logd_size_lowram_titles:I

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 125
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$array;->select_logd_size_lowram_titles:I

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 129
    :cond_3
    iget-object v4, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$array;->select_logd_size_summaries:I

    .line 130
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 131
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_6

    .line 132
    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    aget-object v6, v2, v5

    .line 133
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    move v3, v5

    .line 138
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroidx/preference/ListPreference;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->mLogdSize:Landroidx/preference/ListPreference;

    aget-object v0, v4, v3

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "32768"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "persist.log.tag"

    .line 146
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    const-string v4, ",+Settings"

    .line 151
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "^Settings,*"

    .line 152
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ",+"

    .line 153
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ",+$"

    .line 154
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_6

    const-string p1, "persist.log.tag.snet_event_log"

    .line 159
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "log.tag.snet_event_log"

    .line 161
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "I"

    .line 163
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Settings"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "65536"

    .line 173
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 174
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_7
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_8

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    move-object p1, v0

    .line 179
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object p1, v3

    :cond_9
    const-string v0, "persist.logd.size"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ctl.start"

    const-string v0, "logd-reinit"

    .line 180
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 182
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->updateLogdSizeValues()V

    return-void
.end method
