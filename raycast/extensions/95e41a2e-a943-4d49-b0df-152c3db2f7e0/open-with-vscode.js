"use strict";var s=Object.defineProperty;var a=Object.getOwnPropertyDescriptor;var m=Object.getOwnPropertyNames;var f=Object.prototype.hasOwnProperty;var y=(e,t)=>{for(var i in t)s(e,i,{get:t[i],enumerable:!0})},u=(e,t,i,d)=>{if(t&&typeof t=="object"||typeof t=="function")for(let o of m(t))!f.call(e,o)&&o!==i&&s(e,o,{get:()=>t[o],enumerable:!(d=a(t,o))||d.enumerable});return e};var g=e=>u(s({},"__esModule",{value:!0}),e);var w={};y(w,{default:()=>p});module.exports=g(w);var r=require("@raycast/api");var l=require("@raycast/api");var n=(0,l.getPreferenceValues)();function x(){switch(n.build){case"Code":return"com.microsoft.VSCode";case"Code - Insiders":return"com.microsoft.VSCodeInsiders";case"VSCodium":return"VSCodium"}}var v=n.build,c=x(),I=n.layout,b=n.keepSectionOrder,C=n.closeOtherWindows;async function p(){try{let e=await(0,r.getSelectedFinderItems)();if(e.length===0)throw new Error("No Finder item selected");for(let t of e)await(0,r.open)(t.path,c);await(0,r.closeMainWindow)()}catch(e){await(0,r.showToast)({title:"Failed opening selected Finder item",style:r.Toast.Style.Failure,message:e instanceof Error?e.message:String(e)})}}
