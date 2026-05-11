.class synthetic Lcom/smartisanos/launcher/view/Dc;
.super Ljava/lang/Object;
.source "SettingButton.java"


# static fields
.field static final synthetic oy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->values()[Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/launcher/view/Dc;->oy:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/view/Dc;->oy:[I

    sget-object v1, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->Oaa:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/launcher/view/Dc;->oy:[I

    sget-object v1, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->Paa:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
