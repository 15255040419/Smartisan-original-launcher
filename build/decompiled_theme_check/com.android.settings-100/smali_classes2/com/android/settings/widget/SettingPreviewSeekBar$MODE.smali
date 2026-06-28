.class public final enum Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;
.super Ljava/lang/Enum;
.source "SettingPreviewSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingPreviewSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

.field public static final enum PROGRESS:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

.field public static final enum SIMPLE_ITEM:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    const/4 v1, 0x0

    const-string v2, "PROGRESS"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->PROGRESS:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    new-instance v0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    const/4 v2, 0x1

    const-string v3, "SIMPLE_ITEM"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->SIMPLE_ITEM:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    .line 48
    sget-object v3, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->PROGRESS:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->SIMPLE_ITEM:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->$VALUES:[Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;
    .locals 1

    .line 48
    const-class v0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->$VALUES:[Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    invoke-virtual {v0}, [Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    return-object v0
.end method
