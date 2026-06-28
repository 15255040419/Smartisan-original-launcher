.class public Lcom/android/settingslib/deviceinfo/AbstractSerialNumberPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractSerialNumberPreferenceController.java"


# static fields
.field static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"


# instance fields
.field private final mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/deviceinfo/AbstractSerialNumberPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settingslib/deviceinfo/AbstractSerialNumberPreferenceController;->mSerialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "serial_number"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractSerialNumberPreferenceController;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "serial_number"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractSerialNumberPreferenceController;->mSerialNumber:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
